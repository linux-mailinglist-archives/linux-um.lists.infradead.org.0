Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8A1115AA1
	for <lists+linux-um@lfdr.de>; Sat,  7 Dec 2019 02:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7Sdq+5B66qkddobp1ovpxoPv+wbm/bg1glwdW157NE=; b=Hsss1cB1wWtA7U
	W9jrkVB6qfRfgB4d7W/jkx2JKL7EsEgMejPemEZirtI6jmYSQdFczyuIJOymevnk+i0hHCN/bJOT+
	37yj1aAz5X/v8+bNNKb3oM+M132xXzRNFZy4NxiMBkBNeuyi2YBmn6buAsuaoWQhw5pL44AHuikdN
	HZ7gBKVp9LAU6/MwF+BhRWD98uOJy1CKeXDdipIfKDnu4NgUMr6nj7KA2XxPIknj7+Vfy7rwV92IO
	p7mRtwfqJ1KrCcx3IYhyFAKPa+mFSr58szcKagrjeugwWEpfDg9eqm++lGxfA6LEF+PKz4Abck0se
	dgNrhsRIbe8sL39GoMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idOpn-0003kc-MS; Sat, 07 Dec 2019 01:24:35 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idOpl-0003k8-RI
 for linux-um@lists.infradead.org; Sat, 07 Dec 2019 01:24:35 +0000
Received: by mail-pl1-x649.google.com with SMTP id s6so4393522plq.3
 for <linux-um@lists.infradead.org>; Fri, 06 Dec 2019 17:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=I9mt7vf3xglkTwOGNx1fWAUc+1Y8ZQ1EzCG2Kz5JSK8=;
 b=TpREVbDlmbGdl7X6OdfnkSHz32jO7t2DNQu3Fk0+D7+tFK24KvQvFfF9w+lqpKVmE/
 HpShhZhO3ETyi9mCO8nAhgtoTsT113GqyU3oSlbOZpGcy8L/GcvI7DpFCKdZ1gd1DJyw
 y3Ruv7vwuBf/IGXuEW8S+frgmHuqzeGHxm48lqohulrB59uyw5ScqOW0lG1K8efbNIaD
 Ay7rWlhQXPGYCeI9Zix7wJm+nWZiGnme/vXqa/Ee0qJvlKC6doNI05HsPLQ7Gzpn6Szi
 kEWt3D9bQ6/E998uSbqWGXtVsCerryQPmSJ2YsRamOKM3MWxNiJKYyInXPWA+wtay1q/
 sIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=I9mt7vf3xglkTwOGNx1fWAUc+1Y8ZQ1EzCG2Kz5JSK8=;
 b=E3VuJw9q0/vKnJV2BqkmiLB0A7QyF0fmAfd2b/QoqszhUkQKwqOpLB5SaWHpKAJjUt
 gWUKDcitlvqZP/cD2rbSQHRbUS0J5txHsotQlZTNULSurWTtIV8s55MkMSyxDCWEAz9o
 PbeSLQUzv4AdZ716XnmIFjGA4cCD59nJGdFDsfz0V19MVRC7NZd4I84w1pHwtPhxIChA
 1rH3ksjxMr8msVWsj5+085XQDrr8+aKmNKP5pP6JAr2p/543xT/SWbeVVAlhQkxYSh2c
 zwwfvzG0vLeu5sSSzNlAXYI7LAf3HKIlULs9Pm2orGB6WhPYSxDBou9CnDWU+GSamj2r
 CUMw==
X-Gm-Message-State: APjAAAWcc/web4z/gt+SyKij24N56mLK7Ybet5GBp4oRPCGkEXBlLFZK
 wrqYpnjpAXubwFgzUJt/NzqittoX2lkiv/XwgMdYHQ==
X-Google-Smtp-Source: APXvYqye9GJwzbmSJfQMzs/gTEW39cIotvIWty98XCfuzstgcfhNeQoBJIB2U0e+E7l62SaFjZY/+nW9N0M+gombP2pdOQ==
X-Received: by 2002:a63:4824:: with SMTP id v36mr6767662pga.343.1575681871642; 
 Fri, 06 Dec 2019 17:24:31 -0800 (PST)
Date: Fri,  6 Dec 2019 17:24:01 -0800
In-Reply-To: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
Message-Id: <20191207012401.222282-1-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: Re: [PATCH] um: Add back support for extra userspace libraries
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_172433_907103_8FF058C6 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Brendan Higgins <brendanhiggins@google.com>, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, johannes.berg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

> PCAP and VDE network transports require linking with userspace
> libraries. The current build system has no means of passing these
> as arguments.
>
> This patch adds a script to expand the library list for linking
> for these transports as well as any future driver that needs to
> rely on additional libraries on the userspace side.
>
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
