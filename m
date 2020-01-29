Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2B114C699
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 07:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cffZ5alps2Lb27jIy9HcaJHwa7OcC3j2KIMfP0pzpg4=; b=swtjYv3q0QFMAA
	7HrWhdOKlPv7QIiqZ62CLhA+9+mNLLNOxov8Dz8Nt0dVMCJddcJ8Nj7wGmR93LI9ztGDa5dxuaYci
	RZPABJuGgBPtZun8WC5p2DciXJYks7uhWqSc0ny+rmORq+IldW711afkhmt+KUrFAIhtvKpqJMaaz
	vtfUxaca720zPnm7tsy/Gq0HdwLL4jSExuSSqWuiok0W3/x8cL5HBoInNiio4ZDIcdiZQEDpvora/
	C0IWX0idfexZ14ROfeGpnVLr5h0vY0JEUXUnI8JNnrgGp831box74NN6MkS+ui++uTa1HRSmQB4s4
	Pfy1qMgwjP+AdaRWT0/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwgzn-0006f6-E6; Wed, 29 Jan 2020 06:38:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwgzk-0006e6-Qt
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 06:38:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C2A62064C;
 Wed, 29 Jan 2020 06:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580279916;
 bh=RMW9XvEC6xztDEAPjm7/xfpZ8SdMJ1dxG571mw5qRaQ=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=ZS/kFlY6dhawaQwWN3FCrAPlcSHZ/KY1ZQYcmYPFmEDWAFWP4V6vXr0EgaXnfWVv0
 xuNvmDC2+6AY9z9eTPc0ZoI2Fv4eM8WbnkIIa/2DsAZqhhKnMX2lcOmLpFoiXlcTEq
 9dIvN1Pwn8eGV/pCk8LEUlJva+uEisX4oqKCgAGc=
MIME-Version: 1.0
In-Reply-To: <20200128072002.79250-5-brendanhiggins@google.com>
References: <20200128072002.79250-1-brendanhiggins@google.com>
 <20200128072002.79250-5-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1 4/7] init: main: add KUnit to kernel init
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, frowand.list@gmail.com, jdike@addtoit.com,
 keescook@chromium.org, richard@nod.at, rppt@linux.ibm.com,
 skhan@linuxfoundation.org, yzaikin@google.com
User-Agent: alot/0.8.1
Date: Tue, 28 Jan 2020 22:38:35 -0800
Message-Id: <20200129063836.6C2A62064C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_223836_888751_ED0638A8 
X-CRM114-Status: UNSURE (   4.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, knut.omang@oracle.com,
 linux-doc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2020-01-27 23:19:59)
> Remove KUnit from init calls entirely, instead call directly from
> kernel_init().
> 
> Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Although, why can't it be squashed with the previous patch?


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
