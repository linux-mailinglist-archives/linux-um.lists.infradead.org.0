Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60227FBB29
	for <lists+linux-um@lfdr.de>; Wed, 13 Nov 2019 22:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CTJ7gN2m1ExxFVKqrFtLYPvPRtCwyNCFXiKxw/2Yftc=; b=UCWy7U2wSVn+XU
	AVrmih3RBflvp5zAXH0Lr4QyvDWIiku69Bn2HStvbvYSGI9SCjtpaHgf0UN0tvJmF6XtYtiEKOdKq
	zl2XNreR2bTsePqgk/eseOqbcgjlzxjoZlyNyPH5thmE52RUa98Z92YWmdeC4DEldBOlGLUArlb/R
	6B4pIkvnDJSFKFDlRAJmWXg9nFgKGpa+2DVM40+owFkR1xuX9msQwZKZ/UTkwiUtsfrqof4HAvYeQ
	xxckWJ2vHxBgq1C2nTu4AaBQNBpU1RLPUUPQ6jAbxaXGccIhQN1zkLnJyDdlfJyolCsQ7p1/9sEOj
	1D1D5g8O4WeG2XnYuPmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV0eP-00034N-GL; Wed, 13 Nov 2019 21:58:09 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV0eN-00031I-8W
 for linux-um@lists.infradead.org; Wed, 13 Nov 2019 21:58:08 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iV0eF-0007AU-Ad; Wed, 13 Nov 2019 22:57:59 +0100
Date: Wed, 13 Nov 2019 22:57:58 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 05/23] y2038: vdso: change time_t to
 __kernel_old_time_t
In-Reply-To: <20191108210824.1534248-5-arnd@arndb.de>
Message-ID: <alpine.DEB.2.21.1911132257450.2507@nanos.tec.linutronix.de>
References: <20191108210236.1296047-1-arnd@arndb.de>
 <20191108210824.1534248-5-arnd@arndb.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_135807_443986_9DA500DB 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: y2038@lists.linaro.org, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, x86@kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019, Arnd Bergmann wrote:

> Only x86 uses the 'time' syscall in vdso, so change that to
> __kernel_old_time_t as a preparation for removing 'time_t' and
> '__kernel_time_t' later.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
